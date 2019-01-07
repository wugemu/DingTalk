.class final Lcom/alibaba/android/projection/widget/ProjectionEditItemView$2;
.super Landroid/text/method/DigitsKeyListener;
.source "ProjectionEditItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/projection/widget/ProjectionEditItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/projection/widget/ProjectionEditItemView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/projection/widget/ProjectionEditItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/projection/widget/ProjectionEditItemView;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView$2;->a:Lcom/alibaba/android/projection/widget/ProjectionEditItemView;

    invoke-direct {p0}, Landroid/text/method/DigitsKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getAcceptedChars()[C
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 73
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView$2;->a:Lcom/alibaba/android/projection/widget/ProjectionEditItemView;

    invoke-virtual {v1}, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Legm$e;->cast_code_can_only_input:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "inputStr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    return-object v1
.end method

.method public final getInputType()I
    .locals 1

    .prologue
    .line 79
    const/16 v0, 0x20

    return v0
.end method
