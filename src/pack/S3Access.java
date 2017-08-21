package pack;

import java.io.File;

import com.amazonaws.ClientConfiguration;
import com.amazonaws.Protocol;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSStaticCredentialsProvider;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.client.builder.AwsClientBuilder.EndpointConfiguration;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;
import com.amazonaws.services.s3.model.S3Object;
import com.amazonaws.services.s3.model.S3ObjectInputStream;

public class S3Access {

    private static final String ENDPOINT_URL = "https://s3-ap-northeast-1.amazonaws.com";
    private static final String REGION        = "ap-northeast-1";
    private static String ACCESS_KEY   = "";
    private static String SECRET_KEY   = "";


    public S3Access() {
        super();

        Common common = new Common();
        ACCESS_KEY = common.getPropertyByString("S3AccessKey");
        SECRET_KEY = common.getPropertyByString("S3SecretKey");
    }

    //--------------------------------------------------
    // アップロード
    //--------------------------------------------------
    public void putObject(String bucketName, String objectKey, File file) throws Exception {

        // クライアント生成
        AmazonS3 client = getClient(bucketName);

        // アップロード
        client.putObject(bucketName, objectKey, file);
    }

    //--------------------------------------------------
    // ダウンロード
    //--------------------------------------------------
    public S3ObjectInputStream getObject(String bucketName, String objectKey) throws Exception {

        // クライアント生成
        AmazonS3 client = getClient(bucketName);

        // ダウンロード
        S3Object s3Object = client.getObject(bucketName, objectKey);

        return s3Object.getObjectContent();
    }


    //--------------------------------------------------
    // クライアント生成
    //--------------------------------------------------
    private AmazonS3 getClient(String bucketName) throws Exception {

    	System.out.println("getClient Start");

        // 認証情報
        AWSCredentials credentials = new BasicAWSCredentials(ACCESS_KEY, SECRET_KEY);

        // クライアント設定
        ClientConfiguration clientConfig = new ClientConfiguration();
        clientConfig.setProtocol(Protocol.HTTPS);  // プロトコル
        clientConfig.setConnectionTimeout(10000);   // 接続タイムアウト(ms)

        // エンドポイント設定
        EndpointConfiguration endpointConfiguration = new EndpointConfiguration(ENDPOINT_URL, REGION);

        // クライアント生成
        AmazonS3 client = AmazonS3ClientBuilder.standard()
                        .withCredentials(new AWSStaticCredentialsProvider(credentials))
                        .withClientConfiguration(clientConfig)
                        .withEndpointConfiguration(endpointConfiguration).build();

    	System.out.println("getClient Start2");

        if(!client.doesBucketExist(bucketName)) {
        // バケットがなければException
        	System.out.println("getClient failed");
            throw new Exception("S3バケット[" + bucketName + "]がありません");
        }

        return client;
    }
}
