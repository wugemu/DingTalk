.class public final Lbzx$2;
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
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Lbyx;


# direct methods
.method public constructor <init>(Landroid/app/Activity;[Ljava/lang/String;Lbyx;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lbzx$2;->a:Landroid/app/Activity;

    iput-object p2, p0, Lbzx$2;->b:[Ljava/lang/String;

    iput-object p3, p0, Lbzx$2;->c:Lbyx;

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
    .line 62
    iget-object v0, p0, Lbzx$2;->a:Landroid/app/Activity;

    iget-object v1, p0, Lbzx$2;->b:[Ljava/lang/String;

    iget-object v2, p0, Lbzx$2;->c:Lbyx;

    .line 1022
    invoke-static {v0, v1, v2}, Lbzx;->a(Landroid/app/Activity;[Ljava/lang/String;Lbyx;)V

    .line 63
    return-void
.end method
