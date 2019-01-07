.class public final Lfgl;
.super Ljava/lang/Object;
.source "EditorOrgDeptViewHolder.java"


# instance fields
.field a:Landroid/app/Activity;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/LinearLayout;

.field public d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lfgl;->a:Landroid/app/Activity;

    .line 46
    return-void
.end method
