.class final Lbzw$2;
.super Ljava/lang/Object;
.source "PermissionNeverAskUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbzw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lbzw$2;->a:Landroid/app/Activity;

    iput-object p2, p0, Lbzw$2;->b:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 59
    iget-object v0, p0, Lbzw$2;->a:Landroid/app/Activity;

    iget-object v1, p0, Lbzw$2;->b:[Ljava/lang/String;

    .line 1021
    invoke-static {v0, v1}, Lbzw;->b(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 60
    return-void
.end method
