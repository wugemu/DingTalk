.class final Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance$1;
.super Ljava/lang/Object;
.source "RuntimeWXSDKInstance.java"

# interfaces
.implements Lhqe$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance$1;->a:Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance$1;->a:Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    invoke-static {v0, p1}, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->a(Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
