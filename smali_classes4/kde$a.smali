.class public final Lkde$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkde;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lkdk;

.field private b:Lkdl;


# direct methods
.method public constructor <init>(Lkdk;Lkdl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkde$a;->a:Lkdk;

    iput-object p2, p0, Lkde$a;->b:Lkdl;

    return-void
.end method


# virtual methods
.method public final a(Lkcy;)V
    .locals 1

    iget-object v0, p0, Lkde$a;->a:Lkdk;

    invoke-interface {v0, p1}, Lkdk;->a(Lkcy;)V

    return-void
.end method
