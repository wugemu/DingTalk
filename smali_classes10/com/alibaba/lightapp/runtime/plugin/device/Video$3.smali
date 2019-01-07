.class Lcom/alibaba/lightapp/runtime/plugin/device/Video$3;
.super Ljava/lang/Object;
.source "Video.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/device/Video;->play(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Video;

.field final synthetic val$localPath:Ljava/lang/String;

.field final synthetic val$videoSize:J

.field final synthetic val$videoThumbUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/device/Video;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Video;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Video;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$3;->val$localPath:Ljava/lang/String;

    iput-wide p3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$3;->val$videoSize:J

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$3;->val$videoThumbUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 173
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Video;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/Video;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$3;->val$localPath:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$3;->val$videoSize:J

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$3;->val$videoThumbUrl:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;JLjava/lang/String;)V

    .line 174
    return-void
.end method
