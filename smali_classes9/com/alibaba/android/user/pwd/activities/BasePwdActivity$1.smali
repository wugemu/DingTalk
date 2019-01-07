.class final Lcom/alibaba/android/user/pwd/activities/BasePwdActivity$1;
.super Ljava/lang/Object;
.source "BasePwdActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity$1;->a:Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 58
    .local v0, "vid":I
    sget v1, Lezg$h;->pwd_back:I

    if-ne v0, v1, :cond_1

    .line 59
    iget-object v1, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity$1;->a:Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->finish()V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    sget v1, Lezg$h;->pwd_kb_0:I

    if-ne v0, v1, :cond_2

    .line 61
    iget-object v1, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity$1;->a:Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->a(Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;I)V

    goto :goto_0

    .line 62
    :cond_2
    sget v1, Lezg$h;->pwd_kb_1:I

    if-ne v0, v1, :cond_3

    .line 63
    iget-object v1, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity$1;->a:Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->a(Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;I)V

    goto :goto_0

    .line 64
    :cond_3
    sget v1, Lezg$h;->pwd_kb_2:I

    if-ne v0, v1, :cond_4

    .line 65
    iget-object v1, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity$1;->a:Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->a(Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;I)V

    goto :goto_0

    .line 66
    :cond_4
    sget v1, Lezg$h;->pwd_kb_3:I

    if-ne v0, v1, :cond_5

    .line 67
    iget-object v1, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity$1;->a:Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->a(Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;I)V

    goto :goto_0

    .line 68
    :cond_5
    sget v1, Lezg$h;->pwd_kb_4:I

    if-ne v0, v1, :cond_6

    .line 69
    iget-object v1, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity$1;->a:Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->a(Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;I)V

    goto :goto_0

    .line 70
    :cond_6
    sget v1, Lezg$h;->pwd_kb_5:I

    if-ne v0, v1, :cond_7

    .line 71
    iget-object v1, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity$1;->a:Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->a(Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;I)V

    goto :goto_0

    .line 72
    :cond_7
    sget v1, Lezg$h;->pwd_kb_6:I

    if-ne v0, v1, :cond_8

    .line 73
    iget-object v1, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity$1;->a:Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->a(Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;I)V

    goto :goto_0

    .line 74
    :cond_8
    sget v1, Lezg$h;->pwd_kb_7:I

    if-ne v0, v1, :cond_9

    .line 75
    iget-object v1, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity$1;->a:Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->a(Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;I)V

    goto :goto_0

    .line 76
    :cond_9
    sget v1, Lezg$h;->pwd_kb_8:I

    if-ne v0, v1, :cond_a

    .line 77
    iget-object v1, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity$1;->a:Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->a(Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;I)V

    goto :goto_0

    .line 78
    :cond_a
    sget v1, Lezg$h;->pwd_kb_9:I

    if-ne v0, v1, :cond_b

    .line 79
    iget-object v1, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity$1;->a:Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;

    const/16 v2, 0x9

    invoke-static {v1, v2}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->a(Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;I)V

    goto/16 :goto_0

    .line 80
    :cond_b
    sget v1, Lezg$h;->pwd_kb_delete:I

    if-ne v0, v1, :cond_c

    .line 81
    iget-object v1, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity$1;->a:Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->a(Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;)V

    goto/16 :goto_0

    .line 82
    :cond_c
    sget v1, Lezg$h;->pwd_other_action:I

    if-ne v0, v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity$1;->a:Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->g()V

    goto/16 :goto_0
.end method
