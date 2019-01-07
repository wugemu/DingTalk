.class public final Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;
.super Ljava/lang/Object;
.source "OneBoxView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Landroid/text/SpannableString;

.field public b:Landroid/view/View$OnClickListener;

.field public c:Landroid/text/SpannableString;

.field public d:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1364
    return-void
.end method


# virtual methods
.method public final a()Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1414
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;-><init>()V

    .line 1415
    .local v0, "subTextInfo":Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;->a:Landroid/text/SpannableString;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;->a:Landroid/text/SpannableString;

    .line 1416
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;->b:Landroid/view/View$OnClickListener;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;->b:Landroid/view/View$OnClickListener;

    .line 1417
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;->c:Landroid/text/SpannableString;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;->c:Landroid/text/SpannableString;

    .line 1418
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;->d:Landroid/view/View$OnClickListener;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;->d:Landroid/view/View$OnClickListener;

    .line 1419
    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1374
    if-nez p1, :cond_0

    .line 1375
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;->a:Landroid/text/SpannableString;

    .line 1379
    :goto_0
    return-void

    .line 1377
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;->a:Landroid/text/SpannableString;

    goto :goto_0
.end method
