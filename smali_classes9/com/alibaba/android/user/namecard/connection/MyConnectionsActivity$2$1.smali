.class final Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$2$1;
.super Ljava/lang/Object;
.source "MyConnectionsActivity.java"

# interfaces
.implements Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lhll;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic b:Lhll;

.field final synthetic c:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$2;Lcom/alibaba/fastjson/JSONObject;Lhll;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$2;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$2$1;->c:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$2;

    iput-object p2, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$2$1;->a:Lcom/alibaba/fastjson/JSONObject;

    iput-object p3, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$2$1;->b:Lhll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 342
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$2$1;->c:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$2;->a:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$2$1;->a:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v1, "localContactCount"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$2$1;->b:Lhll;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$2$1;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {v0, v1}, Lhll;->a(Lcom/alibaba/fastjson/JSONObject;)V

    .line 346
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 3
    .param p1, "totalCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 334
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$2$1;->c:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$2;->a:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$2$1;->a:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v1, "localContactCount"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$2$1;->b:Lhll;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$2$1;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {v0, v1}, Lhll;->a(Lcom/alibaba/fastjson/JSONObject;)V

    .line 338
    :cond_0
    return-void
.end method