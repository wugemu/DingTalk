.class public final Lbpx;
.super Lbpw;
.source "LoadPersonalModel.java"


# static fields
.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;


# instance fields
.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_circle_usr_last_cursor_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbpx;->f:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_circle_usr_first_cursor_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbpx;->g:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "loadParam"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lbpw;-><init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;)V

    .line 32
    iget-wide v0, p2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;->uid:J

    .line 33
    .local v0, "uid":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lbpx;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lbpx;->h:Ljava/lang/String;

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lbpx;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lbpx;->i:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lbpx;->i:Ljava/lang/String;

    return-object v0
.end method

.method protected final a(Lbou;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;Lcma;)V
    .locals 0
    .param p1, "api"    # Lbou;
    .param p2, "loadParam"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;
    .param p3, "listener"    # Lcma;

    .prologue
    .line 49
    invoke-interface {p1, p2, p3}, Lbou;->b(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;Lcma;)V

    .line 50
    return-void
.end method

.method protected final a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;)V
    .locals 4
    .param p1, "snPostResultObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 53
    if-nez p1, :cond_0

    .line 61
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;->getPosts()Ljava/util/List;

    move-result-object v0

    .line 55
    .local v0, "posts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;>;"
    invoke-static {v0}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    const-string/jumbo v1, "load empty posts"

    .line 1076
    const/4 v2, 0x0

    invoke-static {v2, v1}, Lbqh;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 2064
    :cond_1
    invoke-static {}, Lbpf;->e()Lbpf;

    move-result-object v1

    iget-object v2, p0, Lbpx;->b:Landroid/app/Activity;

    new-instance v3, Lbpx$1;

    invoke-direct {v3, p0, v0}, Lbpx$1;-><init>(Lbpx;Ljava/util/List;)V

    invoke-virtual {v1, v2, v0, v3}, Lbpf;->a(Landroid/app/Activity;Ljava/util/List;Lcou;)V

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lbpx;->h:Ljava/lang/String;

    return-object v0
.end method
