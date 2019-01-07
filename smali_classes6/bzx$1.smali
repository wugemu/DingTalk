.class public final Lbzx$1;
.super Ljava/lang/Object;
.source "PermissionRationUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbzx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/Fragment;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Lbyx;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lbyx;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lbzx$1;->a:Landroid/support/v4/app/Fragment;

    iput-object p2, p0, Lbzx$1;->b:[Ljava/lang/String;

    iput-object p3, p0, Lbzx$1;->c:Lbyx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 48
    iget-object v0, p0, Lbzx$1;->a:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lbzx$1;->b:[Ljava/lang/String;

    iget-object v2, p0, Lbzx$1;->c:Lbyx;

    .line 1022
    invoke-static {v0, v1, v2}, Lbzx;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lbyx;)V

    .line 49
    return-void
.end method
