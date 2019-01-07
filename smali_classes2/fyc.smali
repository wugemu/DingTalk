.class public final Lfyc;
.super Lfya;
.source "DeleteButtonViewHolder.java"


# instance fields
.field private c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "layoutId"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lfya;-><init>(Landroid/app/Activity;I)V

    .line 35
    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 39
    if-eqz p1, :cond_0

    .line 40
    sget v0, Lfxs$a;->iv_member_delete_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfyc;->c:Landroid/widget/ImageView;

    .line 41
    new-instance v0, Lfyc$1;

    invoke-direct {v0, p0}, Lfyc$1;-><init>(Lfyc;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;)V
    .locals 0
    .param p1, "model"    # Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;

    .prologue
    .line 55
    return-void
.end method
