.class final Ljdh$a;
.super Ljava/lang/Object;
.source "DNSManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljdk;

.field final synthetic b:Ljdh;


# direct methods
.method constructor <init>(Ljdh;Ljdk;)V
    .locals 1

    iput-object p1, p0, Ljdh$a;->b:Ljdh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljdh$a;->a:Ljdk;

    iput-object p2, p0, Ljdh$a;->a:Ljdk;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    iget-object v0, p0, Ljdh$a;->b:Ljdh;

    iget v1, v0, Ljdh;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Ljdh;->f:I

    iget-object v0, p0, Ljdh$a;->b:Ljdh;

    iget-object v1, p0, Ljdh$a;->a:Ljdk;

    invoke-virtual {v0, v1}, Ljdh;->a(Ljdk;)V

    iget-object v0, p0, Ljdh$a;->b:Ljdh;

    iget v1, v0, Ljdh;->f:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Ljdh;->f:I

    return-void
.end method
