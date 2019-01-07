.class final Lcom/alibaba/android/projection/widget/ProjectionFloatView$2;
.super Ljava/lang/Object;
.source "ProjectionFloatView.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/projection/widget/ProjectionFloatView;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/projection/widget/ProjectionFloatView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/projection/widget/ProjectionFloatView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/projection/widget/ProjectionFloatView;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView$2;->a:Lcom/alibaba/android/projection/widget/ProjectionFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 187
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 188
    const/high16 v0, 0x20000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 189
    return-object p1
.end method
