.class final Lcuo$3;
.super Ljava/lang/Object;
.source "DingTextToViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcuo;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcuo;


# direct methods
.method constructor <init>(Lcuo;)V
    .locals 0
    .param p1, "this$0"    # Lcuo;

    .prologue
    .line 39
    iput-object p1, p0, Lcuo$3;->a:Lcuo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 42
    iget-object v0, p0, Lcuo$3;->a:Lcuo;

    invoke-static {v0}, Lcuo;->a(Lcuo;)V

    .line 43
    return-void
.end method
