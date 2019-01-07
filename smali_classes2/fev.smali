.class public final Lfev;
.super Lfeu;
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
    .line 26
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

    sput-object v0, Lfev;->f:Ljava/lang/String;

    .line 27
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

    sput-object v0, Lfev;->g:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "loadParam"    # Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lfeu;-><init>(Landroid/app/Activity;Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;)V

    .line 34
    iget-wide v0, p2, Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;->uid:J

    .line 35
    .local v0, "uid":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lfev;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lfev;->h:Ljava/lang/String;

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lfev;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lfev;->i:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lfev;->i:Ljava/lang/String;

    return-object v0
.end method

.method protected final a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;)V
    .locals 4
    .param p1, "snPostResultObject"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 56
    if-nez p1, :cond_0

    .line 66
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;->getPosts()Ljava/util/List;

    move-result-object v0

    .line 60
    .local v0, "posts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;>;"
    invoke-static {v0}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    const-string/jumbo v1, "load empty posts"

    .line 1060
    const/4 v2, 0x0

    invoke-static {v2, v1}, Lffe;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 1069
    :cond_1
    invoke-static {}, Lfdx;->a()Lfdx;

    move-result-object v1

    iget-object v2, p0, Lfev;->b:Landroid/app/Activity;

    new-instance v3, Lfev$1;

    invoke-direct {v3, p0, v0}, Lfev$1;-><init>(Lfev;Ljava/util/List;)V

    invoke-virtual {v1, v2, v0, v3}, Lfdx;->a(Landroid/app/Activity;Ljava/util/List;Lcou;)V

    goto :goto_0
.end method

.method protected final a(Lfdk;Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;Lcma;)V
    .locals 0
    .param p1, "api"    # Lfdk;
    .param p2, "loadParam"    # Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;
    .param p3, "listener"    # Lcma;

    .prologue
    .line 51
    invoke-interface {p1, p2, p3}, Lfdk;->b(Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;Lcma;)V

    .line 52
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lfev;->h:Ljava/lang/String;

    return-object v0
.end method
