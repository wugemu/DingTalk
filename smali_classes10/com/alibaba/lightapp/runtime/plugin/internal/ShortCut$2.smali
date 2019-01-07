.class Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$2;
.super Ljava/lang/Object;
.source "ShortCut.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$2;->val$context:Landroid/content/Context;

    .line 1031
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lhrp;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 142
    return-void
.end method
