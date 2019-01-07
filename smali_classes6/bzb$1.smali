.class final Lbzb$1;
.super Ljava/lang/Object;
.source "AvoidOnRequestPermission.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbzb;->a(Landroid/support/v4/app/Fragment;I[Ljava/lang/String;Lbzc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/Fragment;

.field final synthetic b:I

.field final synthetic c:[Ljava/lang/String;

.field final synthetic d:Lbza;


# direct methods
.method constructor <init>(Landroid/support/v4/app/Fragment;I[Ljava/lang/String;Lbza;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lbzb$1;->a:Landroid/support/v4/app/Fragment;

    iput p2, p0, Lbzb$1;->b:I

    iput-object p3, p0, Lbzb$1;->c:[Ljava/lang/String;

    iput-object p4, p0, Lbzb$1;->d:Lbza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 97
    iget-object v0, p0, Lbzb$1;->a:Landroid/support/v4/app/Fragment;

    iget v1, p0, Lbzb$1;->b:I

    iget-object v2, p0, Lbzb$1;->c:[Ljava/lang/String;

    iget-object v3, p0, Lbzb$1;->d:Lbza;

    .line 1018
    invoke-static {v0, v1, v2, v3}, Lbzb;->a(Landroid/support/v4/app/Fragment;I[Ljava/lang/String;Lbza;)V

    .line 98
    return-void
.end method
