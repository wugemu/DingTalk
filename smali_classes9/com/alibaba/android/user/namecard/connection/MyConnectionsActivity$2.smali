.class final Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$2;
.super Ljava/lang/Object;
.source "MyConnectionsActivity.java"

# interfaces
.implements Lhlk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$2;->a:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lhll;)V
    .locals 3
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;
    .param p4, "iMiniAppExternalNativeCallback"    # Lhll;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 329
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 330
    .local v0, "object":Lcom/alibaba/fastjson/JSONObject;
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$2;->a:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    new-instance v2, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$2$1;

    invoke-direct {v2, p0, v0, p4}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$2$1;-><init>(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$2;Lcom/alibaba/fastjson/JSONObject;Lhll;)V

    invoke-static {v1, v2}, Lfsj;->a(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;)V

    .line 349
    return-void
.end method
