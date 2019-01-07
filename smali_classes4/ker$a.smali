.class final Lker$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lkeu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkeu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lker$a;->b:Lkeu;

    iput-object p1, p0, Lker$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    iget-object v0, p0, Lker$a;->a:Landroid/content/Context;

    iget-object v1, p0, Lker$a;->b:Lkeu;

    invoke-static {v0, v1}, Lker;->b(Landroid/content/Context;Lkeu;)V

    return-void
.end method
