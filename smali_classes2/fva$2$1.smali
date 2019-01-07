.class final Lfva$2$1;
.super Ljava/lang/Object;
.source "SearchProfessionCenterForRegister.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfva$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfva$2;


# direct methods
.method constructor <init>(Lfva$2;)V
    .locals 0
    .param p1, "this$1"    # Lfva$2;

    .prologue
    .line 125
    iput-object p1, p0, Lfva$2$1;->a:Lfva$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDateSet(III)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 128
    iget-object v1, p0, Lfva$2$1;->a:Lfva$2;

    iget-object v1, v1, Lfva$2;->a:Lfva;

    .line 1024
    iput p1, v1, Lfva;->h:I

    .line 129
    iget-object v1, p0, Lfva$2$1;->a:Lfva$2;

    iget-object v1, v1, Lfva$2;->a:Lfva;

    .line 2024
    iput p2, v1, Lfva;->i:I

    .line 130
    iget-object v1, p0, Lfva$2$1;->a:Lfva$2;

    iget-object v1, v1, Lfva$2;->a:Lfva;

    .line 3024
    iget-object v1, v1, Lfva;->f:Landroid/widget/TextView;

    .line 130
    if-eqz v1, :cond_0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "date":Ljava/lang/String;
    iget-object v1, p0, Lfva$2$1;->a:Lfva$2;

    iget-object v1, v1, Lfva$2;->a:Lfva;

    .line 4024
    iget-object v1, v1, Lfva;->f:Landroid/widget/TextView;

    .line 132
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    .end local v0    # "date":Ljava/lang/String;
    :cond_0
    return-void
.end method
