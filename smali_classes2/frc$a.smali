.class public final Lfrc$a;
.super Ljava/lang/Object;
.source "ContactAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfrc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/CheckBox;

.field final synthetic d:Lfrc;


# direct methods
.method public constructor <init>(Lfrc;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lfrc;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 77
    iput-object p1, p0, Lfrc$a;->d:Lfrc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    sget v0, Lezg$h;->iv_verify_contact_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lfrc$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 79
    sget v0, Lezg$h;->tv_verify_contact_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfrc$a;->b:Landroid/widget/TextView;

    .line 80
    sget v0, Lezg$h;->cb_verify_contact:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lfrc$a;->c:Landroid/widget/CheckBox;

    .line 81
    return-void
.end method
