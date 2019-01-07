.class Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAPIValidateAdapter$1;
.super Ljava/lang/Object;
.source "WMLAPIValidateAdapter.java"

# interfaces
.implements Ljpk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAPIValidateAdapter;->getValidator()Ljpk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAPIValidateAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAPIValidateAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAPIValidateAdapter;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAPIValidateAdapter$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAPIValidateAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValidate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljpk$a;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "s1"    # Ljava/lang/String;
    .param p4, "s2"    # Ljava/lang/String;
    .param p5, "s3"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 16
    new-instance v0, Ljpk$a;

    invoke-direct {v0}, Ljpk$a;-><init>()V

    .line 17
    .local v0, "result":Ljpk$a;
    const/4 v1, 0x1

    iput-boolean v1, v0, Ljpk$a;->a:Z

    .line 26
    return-object v0
.end method
