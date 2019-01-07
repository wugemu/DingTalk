.class final Lcom/alibaba/android/user/external/manage/EditExtFieldActivity$3;
.super Ljava/lang/Object;
.source "EditExtFieldActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity$3;->a:Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity$3;->a:Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->a(Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;Z)Z

    .line 130
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity$3;->a:Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->b(Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;)V

    .line 131
    return-void
.end method
