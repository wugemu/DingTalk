.class Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$1$1;
.super Ljava/lang/Object;
.source "BlankPageDetector.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$1;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$1;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$1$1;->this$1:Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 57
    return-void
.end method
