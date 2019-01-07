.class final Ljzd$a;
.super Ljzd$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ljzd;


# direct methods
.method constructor <init>(Ljzd;)V
    .locals 0

    iput-object p1, p0, Ljzd$a;->a:Ljzd;

    invoke-direct {p0, p1}, Ljzd$b;-><init>(Ljzd;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Ljzd$a;->a:Ljzd;

    invoke-static {v0}, Ljzd;->c(Ljzd;)V

    return-void
.end method
