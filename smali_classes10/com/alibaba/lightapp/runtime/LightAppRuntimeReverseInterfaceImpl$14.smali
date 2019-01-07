.class final Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$14;
.super Ljava/lang/Object;
.source "LightAppRuntimeReverseInterfaceImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->navToCommonWebView(Landroid/content/Context;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:J

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/util/List;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;Ljava/util/List;Ljava/util/Map;Landroid/content/Context;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;

    .prologue
    .line 526
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$14;->i:Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$14;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$14;->b:Ljava/util/Map;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$14;->c:Landroid/content/Context;

    iput-wide p5, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$14;->d:J

    iput-object p7, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$14;->e:Ljava/lang/String;

    iput-object p8, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$14;->f:Ljava/util/List;

    iput-object p9, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$14;->g:Ljava/lang/String;

    iput-object p10, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$14;->h:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 526
    check-cast p1, Ljava/util/List;

    .line 1529
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1530
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .line 1531
    if-eqz v0, :cond_0

    .line 1532
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    .line 1533
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$14;->a:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1534
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$14;->b:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgStaffId:Ljava/lang/String;

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1539
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$14;->i:Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$14;->c:Landroid/content/Context;

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$14;->d:J

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$14;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$14;->f:Ljava/util/List;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$14;->g:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$14;->h:Ljava/lang/String;

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$14;->b:Ljava/util/Map;

    invoke-static/range {v0 .. v8}, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->access$000(Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;Landroid/content/Context;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 526
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 549
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$14;->i:Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$14;->c:Landroid/content/Context;

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$14;->d:J

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$14;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$14;->f:Ljava/util/List;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$14;->g:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$14;->h:Ljava/lang/String;

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$14;->b:Ljava/util/Map;

    invoke-static/range {v0 .. v8}, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->access$000(Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;Landroid/content/Context;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 550
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 545
    return-void
.end method
