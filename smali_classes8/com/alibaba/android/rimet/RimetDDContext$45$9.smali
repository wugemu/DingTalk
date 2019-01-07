.class final Lcom/alibaba/android/rimet/RimetDDContext$45$9;
.super Ljava/lang/Object;
.source "RimetDDContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/RimetDDContext$45;->a(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/alibaba/android/rimet/RimetDDContext$45;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/RimetDDContext$45;Ljava/lang/String;J)V
    .locals 1
    .param p1, "this$1"    # Lcom/alibaba/android/rimet/RimetDDContext$45;

    .prologue
    .line 1501
    iput-object p1, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$9;->c:Lcom/alibaba/android/rimet/RimetDDContext$45;

    iput-object p2, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$9;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$9;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1504
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$9;->a:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1505
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1529
    :cond_0
    :goto_0
    return-void

    .line 1508
    :cond_1
    const/4 v2, 0x0

    .line 1510
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2067
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    const-string/jumbo v5, "MD5"

    invoke-static {v3, v5}, Lcoh;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1512
    .local v4, "md5":Ljava/lang/String;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v5

    new-instance v6, Lcom/alibaba/android/rimet/RimetDDContext$45$9$1;

    invoke-direct {v6, p0, v4}, Lcom/alibaba/android/rimet/RimetDDContext$45$9$1;-><init>(Lcom/alibaba/android/rimet/RimetDDContext$45$9;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lhcv;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1524
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1526
    :catch_0
    move-exception v0

    .line 1527
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1518
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "md5":Ljava/lang/String;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 1519
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1520
    const-string/jumbo v5, "dingtalkbase"

    const-string/jumbo v6, "theme file not found"

    invoke-static {v5, v6}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1523
    if-eqz v2, :cond_0

    .line 1524
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1526
    :catch_2
    move-exception v0

    .line 1527
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1522
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 1523
    :goto_2
    if-eqz v2, :cond_2

    .line 1524
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1528
    :cond_2
    :goto_3
    throw v5

    .line 1526
    :catch_3
    move-exception v0

    .line 1527
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1522
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 1518
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method
