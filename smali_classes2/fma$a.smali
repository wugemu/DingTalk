.class final Lfma$a;
.super Ljava/lang/Object;
.source "MyCustomerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/CheckBox;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field final synthetic e:Lfma;


# direct methods
.method public constructor <init>(Lfma;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lfma;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 158
    iput-object p1, p0, Lfma$a;->e:Lfma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    sget v0, Lezg$h;->checkbox:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lfma$a;->a:Landroid/widget/CheckBox;

    .line 160
    sget v0, Lezg$h;->tv_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfma$a;->b:Landroid/widget/TextView;

    .line 161
    sget v0, Lezg$h;->tv_sub_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfma$a;->c:Landroid/widget/TextView;

    .line 162
    sget v0, Lezg$h;->tv_count:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfma$a;->d:Landroid/widget/TextView;

    .line 163
    return-void
.end method
