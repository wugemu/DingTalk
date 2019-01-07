.class public Lcom/amap/api/mapcore/util/gx;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 63
    :try_start_0
    const-string/jumbo v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 64
    const-string/jumbo v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 66
    array-length v1, v2

    array-length v4, v3

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v1, v0

    .line 68
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v2, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v0, v5

    if-nez v0, :cond_0

    aget-object v0, v2, v1

    aget-object v5, v3, v1

    .line 69
    invoke-virtual {v0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :cond_0
    if-eqz v0, :cond_1

    .line 77
    :goto_1
    return v0

    .line 72
    :cond_1
    array-length v0, v2

    array-length v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v0, v1

    goto :goto_1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    const-string/jumbo v1, "Utils"

    const-string/jumbo v2, "compareVersion"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static a()Ljava/security/PublicKey;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 30
    :try_start_0
    const-string/jumbo v0, "X.509"

    .line 31
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 32
    const-string/jumbo v2, "MIIDRzCCAi+gAwIBAgIEeuDbsDANBgkqhkiG9w0BAQsFADBTMQswCQYDVQQGEwJjbjELMAkGA1UECBMCYmoxCzAJBgNVBAcTAmJqMQ0wCwYDVQQKEwRvcGVuMQ4wDAYDVQQLEwVnYW9kZTELMAkGA1UEAxMCUWkwIBcNMTYwODAxMDE0ODMwWhgPMjA3MTA1MDUwMTQ4MzBaMFMxCzAJBgNVBAYTAmNuMQswCQYDVQQIEwJiajELMAkGA1UEBxMCYmoxDTALBgNVBAoTBG9wZW4xDjAMBgNVBAsTBWdhb2RlMQswCQYDVQQDEwJRaTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKpL13mZm4q6AFP5csQE7130Lwq8m+HICy3rBARd9vbw5Cb1wFF96KdhC5P/aASlrPb+6MSyP1nE97p3ygKJWsgxExyvVuOvh1KUqOFuK15oY7JKTk6L4eLCbkBJZV2DLffpW0HGiRpmFG8LJR0sjNOoubSd5R/6XoBwyRglsyVHprjrK2qDRvT3Edgtfvxp4HnUzMsDD3CJRtgsaDw6ECyF7fhYKEz9I6OEEVsPlpbgzRmhSeFDL77/k1mhPve1ZyKGlPcxvSSdLSAlV0hzr5NKlujHll7BbouwDnr6l/0O44AzZ0V/ieft1iBkSLirnlm56uI/8jdh8ANrD1fW4ZUCAwEAAaMhMB8wHQYDVR0OBBYEFBzudtI5UKRvHGDV+VQRzItIj3PqMA0GCSqGSIb3DQEBCwUAA4IBAQBS2EGndgvIBnf7Ce4IhDbm7F5h4L+6TYGmT9acnQbEFY8oUoFblMDgg+cETT44jU/elwbJJVmKhj/WRQl+AdSALBAgDvxq1AcjlGg+c8H3pa2BWlrxNJP9MFLIEI5bA8m5og/Epjut50uemZ9ggoNmJeW0N/a6D8euhYJKOYngUQqDu6cwLj1Ec0ptwrNRbvRXXgzjfJMPE/ii4K/b8JZ+QN2d/bl7QEvKWBSzVueZifV659qAbMh6C9TCVstWWfV53Z3Vyt+duDNU5ed7aWao42Ppw4VHslrJW0V6BXDUhhzgXx28UWY78W7LmYGCtC8PfDId2+k4tPoTNPM6HHP5"

    .line 33
    invoke-static {v2}, Lcom/amap/api/mapcore/util/fi;->b(Ljava/lang/String;)[B

    move-result-object v3

    .line 34
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 38
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 44
    :try_start_2
    invoke-static {v2}, Lcom/amap/api/mapcore/util/gx;->a(Ljava/io/Closeable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 51
    :goto_0
    return-object v0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 40
    :catch_1
    move-exception v0

    move-object v2, v1

    .line 41
    :goto_1
    :try_start_3
    const-string/jumbo v3, "DyLoader"

    const-string/jumbo v4, "init"

    invoke-static {v0, v3, v4}, Lcom/amap/api/mapcore/util/gx;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 44
    :try_start_4
    invoke-static {v2}, Lcom/amap/api/mapcore/util/gx;->a(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    move-object v0, v1

    .line 51
    goto :goto_0

    .line 46
    :catch_2
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 43
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 44
    :goto_3
    :try_start_5
    invoke-static {v2}, Lcom/amap/api/mapcore/util/gx;->a(Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 48
    :goto_4
    throw v0

    .line 46
    :catch_3
    move-exception v1

    .line 47
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 43
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 40
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method static a(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 182
    if-eqz p0, :cond_0

    .line 184
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 161
    invoke-static {p0, p1, p2}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method static a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore/util/gw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_2

    .line 89
    add-int/lit8 v0, v2, 0x1

    move v3, v0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 90
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/gw;

    .line 91
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore/util/gw;

    .line 93
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/gw;->e()Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/gw;->e()Ljava/lang/String;

    move-result-object v5

    .line 96
    invoke-static {v5, v4}, Lcom/amap/api/mapcore/util/gx;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    .line 97
    invoke-interface {p0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-interface {p0, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 88
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 104
    :cond_2
    return-void
.end method

.method static a(Landroid/content/Context;Lcom/amap/api/mapcore/util/fz;Ljava/lang/String;Lcom/amap/api/mapcore/util/fm;)Z
    .locals 1

    .prologue
    .line 127
    .line 128
    invoke-static {p0, p2}, Lcom/amap/api/mapcore/util/gs;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {p1, p2, v0, p3}, Lcom/amap/api/mapcore/util/gx;->a(Lcom/amap/api/mapcore/util/fz;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/mapcore/util/fm;)Z

    move-result v0

    return v0
.end method

.method static a(Lcom/amap/api/mapcore/util/fz;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/mapcore/util/fm;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-static {p0, p1}, Lcom/amap/api/mapcore/util/gs$a;->a(Lcom/amap/api/mapcore/util/fz;Ljava/lang/String;)Lcom/amap/api/mapcore/util/gw;

    move-result-object v1

    .line 134
    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {p3}, Lcom/amap/api/mapcore/util/fm;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/gw;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v0

    .line 140
    :cond_1
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/gw;->b()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-static {p2, v1}, Lcom/amap/api/mapcore/util/gx;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 114
    invoke-static {p0}, Lcom/amap/api/mapcore/util/fj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    :cond_0
    const/4 v0, 0x0

    .line 122
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
