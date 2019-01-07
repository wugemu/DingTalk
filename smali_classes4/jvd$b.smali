.class Ljvd$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljvd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Ljvd$a;


# direct methods
.method public constructor <init>(Ljvd$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljvd$b;->a:Ljvd$a;

    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Ljvd$b;->a:Ljvd$a;

    invoke-virtual {v0}, Ljvd$a;->run()V

    invoke-virtual {p0}, Ljvd$b;->a()V

    return-void
.end method
