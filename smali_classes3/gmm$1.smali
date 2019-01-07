.class final Lgmm$1;
.super Ljava/lang/Object;
.source "SpaceMenuDeleteHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgmm;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgmm;


# direct methods
.method constructor <init>(Lgmm;)V
    .locals 0
    .param p1, "this$0"    # Lgmm;

    .prologue
    .line 109
    iput-object p1, p0, Lgmm$1;->a:Lgmm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 113
    return-void
.end method
