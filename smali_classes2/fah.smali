.class public Lfah;
.super Ljava/lang/Object;
.source "CertifyAPIImpl.java"

# interfaces
.implements Lezo;


# static fields
.field private static a:Lezo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lezo;
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lfah;->a:Lezo;

    if-nez v0, :cond_1

    .line 42
    const-class v1, Lfah;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lfah;->a:Lezo;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lfah;

    invoke-direct {v0}, Lfah;-><init>()V

    sput-object v0, Lfah;->a:Lezo;

    .line 46
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_1
    sget-object v0, Lfah;->a:Lezo;

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Lcma;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 183
    .local p1, "callback":Lcma;, "Lcma<Ljava/lang/Integer;>;"
    new-instance v0, Lfah$6;

    invoke-direct {v0, p0, p1}, Lfah$6;-><init>(Lfah;Lcma;)V

    .line 190
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/CertifyIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/CertifyIService;

    .line 191
    .local v1, "service":Lcom/alibaba/android/user/idl/services/CertifyIService;
    invoke-interface {v1, v0}, Lcom/alibaba/android/user/idl/services/CertifyIService;->certifyStatus(Liyv;)V

    .line 192
    return-void
.end method

.method public final a(Lfok;Lcma;)V
    .locals 4
    .param p1, "clientInfoModel"    # Lfok;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfok;",
            "Lcma",
            "<",
            "Lfrx;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 54
    .local p2, "callback":Lcma;, "Lcma<Lfrx;>;"
    if-nez p1, :cond_1

    .line 55
    if-eqz p2, :cond_0

    .line 56
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "Bad request param."

    invoke-interface {p2, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    new-instance v0, Lfah$1;

    invoke-direct {v0, p0, p2}, Lfah$1;-><init>(Lfah;Lcma;)V

    .line 72
    .local v0, "handler":Lcmg;, "Lcmg<Lfqd;Lfrx;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/CertifyIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/CertifyIService;

    .line 73
    .local v1, "service":Lcom/alibaba/android/user/idl/services/CertifyIService;
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/user/idl/services/CertifyIService;->certifyStep(Lfok;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcma;)V
    .locals 4
    .param p1, "verifyToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 162
    .local p2, "callback":Lcma;, "Lcma<Ljava/lang/Integer;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    if-eqz p2, :cond_0

    .line 164
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "Certify not init."

    invoke-interface {p2, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    new-instance v0, Lfah$5;

    invoke-direct {v0, p0, p2}, Lfah$5;-><init>(Lfah;Lcma;)V

    .line 176
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/CertifyIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/CertifyIService;

    .line 177
    .local v1, "service":Lcom/alibaba/android/user/idl/services/CertifyIService;
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/user/idl/services/CertifyIService;->submitCertify(Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 4
    .param p1, "verifyToken"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/user/model/RealVerifyOCRObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 78
    .local p3, "callback":Lcma;, "Lcma<Lcom/alibaba/android/user/model/RealVerifyOCRObject;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    if-eqz p3, :cond_0

    .line 80
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "Bad request param."

    invoke-interface {p3, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 86
    if-eqz p3, :cond_0

    .line 87
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "Certify not init."

    invoke-interface {p3, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_2
    new-instance v0, Lfah$2;

    invoke-direct {v0, p0, p3}, Lfah$2;-><init>(Lfah;Lcma;)V

    .line 102
    .local v0, "handler":Lcmg;, "Lcmg<Lfqb;Lcom/alibaba/android/user/model/RealVerifyOCRObject;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/CertifyIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/CertifyIService;

    .line 103
    .local v1, "service":Lcom/alibaba/android/user/idl/services/CertifyIService;
    invoke-interface {v1, p1, p2, v0}, Lcom/alibaba/android/user/idl/services/CertifyIService;->certifyOCR(Ljava/lang/String;Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 4
    .param p1, "verifyToken"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 108
    .local p3, "callback":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    if-eqz p3, :cond_0

    .line 110
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "Bad request param."

    invoke-interface {p3, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    if-eqz p3, :cond_0

    .line 117
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "Certify not init."

    invoke-interface {p3, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_2
    new-instance v0, Lfah$3;

    invoke-direct {v0, p0, p3}, Lfah$3;-><init>(Lfah;Lcma;)V

    .line 129
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/CertifyIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/CertifyIService;

    .line 130
    .local v1, "service":Lcom/alibaba/android/user/idl/services/CertifyIService;
    invoke-interface {v1, p1, p2, v0}, Lcom/alibaba/android/user/idl/services/CertifyIService;->certifyOCRIDBack(Ljava/lang/String;Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 4
    .param p1, "verifyToken"    # Ljava/lang/String;
    .param p2, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 135
    .local p3, "callback":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    if-eqz p3, :cond_0

    .line 137
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "Bad request param."

    invoke-interface {p3, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 143
    if-eqz p3, :cond_0

    .line 144
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "Certify not init."

    invoke-interface {p3, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_2
    new-instance v0, Lfah$4;

    invoke-direct {v0, p0, p3}, Lfah$4;-><init>(Lfah;Lcma;)V

    .line 156
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/CertifyIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/CertifyIService;

    .line 157
    .local v1, "service":Lcom/alibaba/android/user/idl/services/CertifyIService;
    invoke-interface {v1, p1, p2, v0}, Lcom/alibaba/android/user/idl/services/CertifyIService;->uploadMaterial(Ljava/lang/String;Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method
