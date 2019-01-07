.class final Lauw$3;
.super Ljava/lang/Object;
.source "ItemSettingHolder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lauw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lauw;


# direct methods
.method constructor <init>(Lauw;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lauw;

    .prologue
    .line 132
    iput-object p1, p0, Lauw$3;->b:Lauw;

    iput-object p2, p0, Lauw$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 135
    iget-object v0, p0, Lauw$3;->b:Lauw;

    iget-object v0, v0, Lauw;->b:Landroid/app/Activity;

    iget-object v1, p0, Lauw$3;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lavr;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 136
    return-void
.end method
