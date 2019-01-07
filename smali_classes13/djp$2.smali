.class public final Ldjp$2;
.super Ljava/lang/Object;
.source "EmotionShareManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldjp$a;

.field final synthetic b:Ldjp;


# direct methods
.method public constructor <init>(Ldjp;Ldjp$a;)V
    .locals 0
    .param p1, "this$0"    # Ldjp;

    .prologue
    .line 96
    iput-object p1, p0, Ldjp$2;->b:Ldjp;

    iput-object p2, p0, Ldjp$2;->a:Ldjp$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 101
    return-void
.end method
