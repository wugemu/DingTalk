.class final Lrf$a;
.super Ljava/lang/Object;
.source "AttendeeListAdapter.java"

# interfaces
.implements Lrs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrs",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lrf$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 108
    sget v0, Laxo$g;->alm_cmail_fragment_mail_participant_divider:I

    return v0
.end method

.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic a(Lrr;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 104
    check-cast p2, Ljava/lang/String;

    .line 1118
    sget v0, Laxo$f;->txtDivider:I

    .line 2100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1118
    check-cast v0, Landroid/widget/TextView;

    .line 1119
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    return-void
.end method
