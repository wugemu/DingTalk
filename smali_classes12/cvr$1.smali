.class final Lcvr$1;
.super Ljava/lang/Object;
.source "GmicNameCardHolder.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcvr;->a(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcvr;


# direct methods
.method constructor <init>(Lcvr;)V
    .locals 0
    .param p1, "this$0"    # Lcvr;

    .prologue
    .line 90
    iput-object p1, p0, Lcvr$1;->a:Lcvr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method
