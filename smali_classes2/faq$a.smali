.class public final Lfaq$a;
.super Ljava/lang/Object;
.source "LWPOAuthProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfaq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lfaq;


# direct methods
.method public constructor <init>(Lfaq;)V
    .locals 1
    .param p1, "this$0"    # Lfaq;

    .prologue
    .line 683
    iput-object p1, p0, Lfaq$a;->b:Lfaq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 685
    const/4 v0, 0x0

    iput v0, p0, Lfaq$a;->a:I

    return-void
.end method


# virtual methods
.method public final a(Lcee;Ljava/lang/String;Lcma;)V
    .locals 9
    .param p1, "loginResult"    # Lcee;
    .param p2, "mobile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcee;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p3, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;>;"
    const/4 v8, 0x0

    .line 690
    iget-object v0, p1, Lcee;->j:Ljava/lang/String;

    .line 691
    .local v0, "accessToken":Ljava/lang/String;
    iget-object v2, p1, Lcee;->k:Ljava/lang/String;

    .line 693
    .local v2, "refreshToken":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 694
    :cond_0
    new-instance v1, Lcom/alibaba/wukong/auth/LoginParam;

    invoke-direct {v1}, Lcom/alibaba/wukong/auth/LoginParam;-><init>()V

    .line 695
    .local v1, "params":Lcom/alibaba/wukong/auth/LoginParam;
    iget-object v4, p1, Lcee;->b:Ljava/lang/String;

    iput-object v4, v1, Lcom/alibaba/wukong/auth/LoginParam;->appKey:Ljava/lang/String;

    .line 696
    iget-object v4, p1, Lcee;->a:Ljava/lang/String;

    iput-object v4, v1, Lcom/alibaba/wukong/auth/LoginParam;->domain:Ljava/lang/String;

    .line 697
    iget-object v4, p1, Lcee;->c:Ljava/lang/Long;

    .line 1044
    const-wide/16 v6, 0x0

    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 697
    iput-wide v4, v1, Lcom/alibaba/wukong/auth/LoginParam;->openId:J

    .line 698
    iget-object v4, p1, Lcee;->f:Ljava/lang/String;

    iput-object v4, v1, Lcom/alibaba/wukong/auth/LoginParam;->secretToken:Ljava/lang/String;

    .line 699
    iget-object v4, p1, Lcee;->d:Ljava/lang/String;

    iput-object v4, v1, Lcom/alibaba/wukong/auth/LoginParam;->nickname:Ljava/lang/String;

    .line 700
    iget v4, p0, Lfaq$a;->a:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lfaq$a;->a:I

    .line 702
    const-string/jumbo v4, "LwpOAuthProvider"

    const-string/jumbo v5, "wk login with LoginParam"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 703
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v4

    new-instance v5, Lfaq$a$1;

    invoke-direct {v5, p0, p3, p1, p2}, Lfaq$a$1;-><init>(Lfaq$a;Lcma;Lcee;Ljava/lang/String;)V

    invoke-virtual {v4, v1, v5}, Lcom/alibaba/wukong/auth/AuthService;->login(Lcom/alibaba/wukong/auth/LoginParam;Lcom/alibaba/wukong/Callback;)V

    .line 778
    .end local v1    # "params":Lcom/alibaba/wukong/auth/LoginParam;
    :goto_0
    return-void

    .line 735
    :cond_1
    new-instance v3, Lcom/alibaba/wukong/auth/TokenParam;

    invoke-direct {v3}, Lcom/alibaba/wukong/auth/TokenParam;-><init>()V

    .line 736
    .local v3, "tokenParam":Lcom/alibaba/wukong/auth/TokenParam;
    iget-object v4, p1, Lcee;->j:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/wukong/auth/TokenParam;->accessToken:Ljava/lang/String;

    .line 737
    iget-object v4, p1, Lcee;->k:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/wukong/auth/TokenParam;->refreshToken:Ljava/lang/String;

    .line 738
    iget-object v4, p1, Lcee;->a:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/wukong/auth/TokenParam;->domain:Ljava/lang/String;

    .line 739
    iget-object v4, p1, Lcee;->c:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/alibaba/wukong/auth/TokenParam;->openId:J

    .line 740
    iget v4, p0, Lfaq$a;->a:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lfaq$a;->a:I

    .line 742
    const-string/jumbo v4, "LwpOAuthProvider"

    const-string/jumbo v5, "wk login with TokenParam"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 743
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v4

    new-instance v5, Lfaq$a$2;

    invoke-direct {v5, p0, p3, p1, p2}, Lfaq$a$2;-><init>(Lfaq$a;Lcma;Lcee;Ljava/lang/String;)V

    invoke-virtual {v4, v3, v5}, Lcom/alibaba/wukong/auth/AuthService;->login(Lcom/alibaba/wukong/auth/TokenParam;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method
