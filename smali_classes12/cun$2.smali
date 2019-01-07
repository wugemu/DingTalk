.class final Lcun$2;
.super Ljava/lang/Object;
.source "DingTextFromViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcun;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcun;


# direct methods
.method constructor <init>(Lcun;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcun;

    .prologue
    .line 49
    iput-object p1, p0, Lcun$2;->b:Lcun;

    iput-object p2, p0, Lcun$2;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    iget-object v0, p0, Lcun$2;->b:Lcun;

    iget-object v1, p0, Lcun$2;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcun;->a(Lcun;Landroid/app/Activity;)V

    .line 53
    return-void
.end method
