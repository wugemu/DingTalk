.class public final Lfva$2;
.super Ljava/lang/Object;
.source "SearchProfessionCenterForRegister.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfva;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfva;


# direct methods
.method public constructor <init>(Lfva;)V
    .locals 0
    .param p1, "this$0"    # Lfva;

    .prologue
    .line 121
    iput-object p1, p0, Lfva$2;->a:Lfva;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 124
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;

    iget-object v1, p0, Lfva$2;->a:Lfva;

    invoke-static {v1}, Lfva;->b(Lfva;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    move-result-object v1

    iget-object v2, p0, Lfva$2;->a:Lfva;

    .line 1024
    iget v2, v2, Lfva;->h:I

    .line 124
    iget-object v3, p0, Lfva$2;->a:Lfva;

    .line 2024
    iget v3, v3, Lfva;->i:I

    .line 124
    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;-><init>(Landroid/content/Context;II)V

    .line 125
    .local v0, "dialog":Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;
    new-instance v1, Lfva$2$1;

    invoke-direct {v1, p0}, Lfva$2$1;-><init>(Lfva$2;)V

    .line 2299
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->a:Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog$a;

    .line 136
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->show()V

    .line 137
    return-void
.end method
