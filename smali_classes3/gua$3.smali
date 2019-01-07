.class final Lgua$3;
.super Ljava/lang/Object;
.source "RecruitVideoBaseHolder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgua;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lgua;


# direct methods
.method constructor <init>(Lgua;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lgua;

    .prologue
    .line 122
    iput-object p1, p0, Lgua$3;->b:Lgua;

    iput-object p2, p0, Lgua$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 125
    iget-object v0, p0, Lgua$3;->b:Lgua;

    iget-object v1, p0, Lgua$3;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lgua;->a(Lgua;Ljava/lang/String;)V

    .line 126
    return-void
.end method
