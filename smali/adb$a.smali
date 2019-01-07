.class final Ladb$a;
.super Ljava/lang/Object;
.source "MailSignAdminOptionListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ladb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/ToggleButton;

.field b:Landroid/widget/TextView;

.field final synthetic c:Ladb;


# direct methods
.method public constructor <init>(Ladb;Landroid/view/View;)V
    .locals 1
    .param p2, "convertView"    # Landroid/view/View;

    .prologue
    .line 131
    iput-object p1, p0, Ladb$a;->c:Ladb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    sget v0, Laxo$f;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ladb$a;->b:Landroid/widget/TextView;

    .line 133
    sget v0, Laxo$f;->toggle:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Ladb$a;->a:Landroid/widget/ToggleButton;

    .line 134
    return-void
.end method
