.class final Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry$3;
.super Ljava/lang/Object;
.source "RuntimeEntry.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/weex/WeexButler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry$3;->a:Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fallback(Ljava/lang/String;)V
    .locals 2
    .param p1, "originalUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 246
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry$3;->a:Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->a(Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;Ljava/lang/String;Z)V

    .line 247
    return-void
.end method
