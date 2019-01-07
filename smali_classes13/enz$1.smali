.class final Lenz$1;
.super Ljava/lang/Object;
.source "SearchMoreMiniApp.java"

# interfaces
.implements Lhlk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lenz;-><init>(Landroid/content/Context;Lcom/alibaba/android/search/SearchGroupType;Leny$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lenz;


# direct methods
.method constructor <init>(Lenz;)V
    .locals 0
    .param p1, "this$0"    # Lenz;

    .prologue
    .line 51
    iput-object p1, p0, Lenz$1;->a:Lenz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lhll;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;
    .param p4, "iMiniAppExternalNativeCallback"    # Lhll;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    if-eqz p1, :cond_0

    const-string/jumbo v0, "searchEApp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lenz$1;->a:Lenz;

    invoke-static {v0, p2, p3, p4}, Lenz;->a(Lenz;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lhll;)V

    .line 63
    .end local p1    # "s":Ljava/lang/String;
    :goto_0
    return-void

    .line 59
    .restart local p1    # "s":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "NameSpace error"

    invoke-interface {p4, v0}, Lhll;->a(Ljava/lang/String;)V

    .line 60
    const-string/jumbo v0, "MiniApp onCallExternalNative error, mNamespace:%s  callNameSpace:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "searchEApp"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    if-nez p1, :cond_1

    const-string/jumbo p1, "null"

    .end local p1    # "s":Ljava/lang/String;
    :cond_1
    aput-object p1, v1, v2

    .line 1050
    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
