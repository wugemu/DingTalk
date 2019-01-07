.class final Lcal$3;
.super Ljava/lang/Object;
.source "MyRedPacketsAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcal;


# direct methods
.method constructor <init>(Lcal;)V
    .locals 0
    .param p1, "this$0"    # Lcal;

    .prologue
    .line 338
    .local p0, "this":Lcal$3;, "Lcal$3;"
    iput-object p1, p0, Lcal$3;->a:Lcal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 341
    .local p0, "this":Lcal$3;, "Lcal$3;"
    const/4 v0, 0x0

    return v0
.end method
