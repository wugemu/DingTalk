.class final Laya$b$1;
.super Ljava/lang/Object;
.source "DingMeetingMinutesAdapter.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laya$b;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laya$b;


# direct methods
.method constructor <init>(Laya$b;)V
    .locals 0
    .param p1, "this$0"    # Laya$b;

    .prologue
    .line 108
    iput-object p1, p0, Laya$b$1;->a:Laya$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 127
    iget-object v0, p0, Laya$b$1;->a:Laya$b;

    iget-object v0, v0, Laya$b;->a:Laya$d;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Laya$b$1;->a:Laya$b;

    iget-object v0, v0, Laya$b;->a:Laya$d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Laya$d;->a(Z)V

    .line 130
    :cond_0
    return-void
.end method

.method public final a(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 111
    iget-object v0, p0, Laya$b$1;->a:Laya$b;

    invoke-static {v0}, Laya$b;->a(Laya$b;)Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;

    move-result-object v0

    float-to-int v1, p1

    float-to-int v2, p2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lbki;->a(Landroid/view/View;III)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laya$b$1;->a:Laya$b;

    .line 112
    invoke-static {v0}, Laya$b;->a(Laya$b;)Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;

    move-result-object v0

    invoke-static {v0}, Lbki;->a(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Laya$b$1;->a:Laya$b;

    iget-object v0, v0, Laya$b;->a:Laya$d;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Laya$b$1;->a:Laya$b;

    iget-object v0, v0, Laya$b;->a:Laya$d;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Laya$d;->a(Z)V

    .line 118
    :cond_0
    return-void
.end method
