.class final Ljww;
.super Ljava/lang/Object;

# interfaces
.implements Ljwx;


# instance fields
.field final synthetic a:Ljwh;


# direct methods
.method private constructor <init>(Ljwh;)V
    .locals 0

    iput-object p1, p0, Ljww;->a:Ljwh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljwh;B)V
    .locals 0

    invoke-direct {p0, p1}, Ljww;-><init>(Ljwh;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Ljww;->a:Ljwh;

    invoke-virtual {v0}, Ljwh;->b()V

    return-void
.end method
