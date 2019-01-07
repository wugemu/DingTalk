.class final Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$25;
.super Ljava/lang/Object;
.source "UserProfileMoreActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic b:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    .prologue
    .line 1439
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$25;->b:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$25;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$25;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1443
    return-void
.end method
