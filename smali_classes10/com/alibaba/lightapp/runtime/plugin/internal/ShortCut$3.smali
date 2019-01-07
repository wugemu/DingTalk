.class Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3;
.super Ljava/lang/Object;
.source "ShortCut.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->fetchFromNet(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$AddShortCutCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;

.field final synthetic val$appId:J

.field final synthetic val$callback:Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$AddShortCutCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$corpId:Ljava/lang/String;

.field final synthetic val$netFile:Ljava/io/File;

.field final synthetic val$shortCutName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;Ljava/lang/String;JLjava/io/File;Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$AddShortCutCallback;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3;->val$corpId:Ljava/lang/String;

    iput-wide p3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3;->val$appId:J

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3;->val$netFile:Ljava/io/File;

    iput-object p6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3;->val$callback:Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$AddShortCutCallback;

    iput-object p7, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3;->val$context:Landroid/content/Context;

    iput-object p8, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3;->val$shortCutName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 148
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;

    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3;)V

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;Ljava/lang/Runnable;)V

    .line 155
    if-eqz p1, :cond_1

    .line 156
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3;->val$corpId:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3;->val$appId:J

    invoke-static {v1, v2, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->access$200(Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3;->val$netFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3;->val$netFile:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 159
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3;->val$callback:Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$AddShortCutCallback;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3;->val$callback:Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$AddShortCutCallback;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3;->val$corpId:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3;->val$appId:J

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3;->val$shortCutName:Ljava/lang/String;

    invoke-static {v1, v2, v3, v6, p1}, Lhrr;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ZLandroid/graphics/Bitmap;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$AddShortCutCallback;->callback(Ljava/lang/Boolean;)V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3;->val$callback:Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$AddShortCutCallback;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3;->val$callback:Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$AddShortCutCallback;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3;->val$corpId:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3;->val$appId:J

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3;->val$shortCutName:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3;->val$context:Landroid/content/Context;

    .line 166
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lhdn$g;->desktop_launch_icon:I

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 165
    invoke-static {v1, v2, v3, v6, v4}, Lhrr;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ZLandroid/graphics/Bitmap;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$AddShortCutCallback;->callback(Ljava/lang/Boolean;)V

    goto :goto_0
.end method
