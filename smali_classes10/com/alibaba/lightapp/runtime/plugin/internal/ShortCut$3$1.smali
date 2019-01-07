.class Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3$1;
.super Ljava/lang/Object;
.source "ShortCut.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3;->callback(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 151
    invoke-static {}, Lhrp;->a()V

    .line 152
    return-void
.end method
