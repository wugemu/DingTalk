.class final Lcwv$2;
.super Ljava/lang/Object;
.source "RemindCardItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcwv;->a(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcwv;


# direct methods
.method constructor <init>(Lcwv;)V
    .locals 0
    .param p1, "this$0"    # Lcwv;

    .prologue
    .line 255
    iput-object p1, p0, Lcwv$2;->a:Lcwv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 258
    iget-object v0, p0, Lcwv$2;->a:Lcwv;

    invoke-static {v0}, Lcwv;->d(Lcwv;)V

    .line 259
    return-void
.end method
