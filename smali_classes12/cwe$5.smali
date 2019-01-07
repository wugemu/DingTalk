.class final Lcwe$5;
.super Ljava/lang/Object;
.source "MemberAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcwe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcwe;


# direct methods
.method constructor <init>(Lcwe;)V
    .locals 0
    .param p1, "this$0"    # Lcwe;

    .prologue
    .line 657
    iput-object p1, p0, Lcwe$5;->a:Lcwe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 662
    return-void
.end method
