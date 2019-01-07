.class final Lcom/alibaba/android/ding/fragment/DingMembersFragment$b;
.super Ljava/lang/Object;
.source "DingMembersFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/fragment/DingMembersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/fragment/DingMembersFragment;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment$b;->a:Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/ding/fragment/DingMembersFragment;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    .prologue
    .line 605
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/fragment/DingMembersFragment$b;-><init>(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 608
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment$b;->a:Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->u(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 609
    return-void
.end method
