.class final Lcip$3;
.super Ljava/lang/Object;
.source "GoogleLocationProxy.java"

# interfaces
.implements Lcin;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcip;->a(Ljava/lang/String;Lcio;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcio;

.field final synthetic b:Lcip;


# direct methods
.method constructor <init>(Lcip;Lcio;)V
    .locals 0
    .param p1, "this$0"    # Lcip;

    .prologue
    .line 98
    iput-object p1, p0, Lcip$3;->b:Lcip;

    iput-object p2, p0, Lcip$3;->a:Lcio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;)V
    .locals 5
    .param p1, "mapLoction"    # Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 101
    if-eqz p1, :cond_2

    .line 102
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 103
    iget-object v0, p0, Lcip$3;->a:Lcio;

    invoke-interface {v0, p1}, Lcio;->onSuccess(Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;)V

    .line 110
    :goto_0
    iget-object v0, p0, Lcip$3;->b:Lcip;

    invoke-static {v0}, Lcip;->a(Lcip;)Lcim;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcip$3;->b:Lcip;

    invoke-static {v0}, Lcip;->a(Lcip;)Lcim;

    move-result-object v0

    iget-object v1, p0, Lcip$3;->a:Lcio;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcim;->a(Ljava/lang/String;)V

    .line 115
    :cond_0
    const-string/jumbo v0, "lightapp"

    invoke-static {}, Lcip;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "startPersistentLocation onLocationChanged "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcip$3;->a:Lcio;

    .line 116
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 115
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcip$3;->a:Lcio;

    invoke-interface {v0, p1}, Lcio;->onError(Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;)V

    goto :goto_0

    .line 108
    :cond_2
    iget-object v0, p0, Lcip$3;->a:Lcio;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcio;->onError(Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;)V

    goto :goto_0
.end method
