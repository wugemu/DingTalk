.class public final Ljvp$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljvp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final d:Ljvp;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljvp;

    invoke-direct {v0}, Ljvp;-><init>()V

    sput-object v0, Ljvp$a;->d:Ljvp;

    return-void
.end method

.method constructor <init>(ILjava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljvp$a;->a:I

    iput-object p2, p0, Ljvp$a;->c:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a()Ljvp;
    .locals 1

    sget-object v0, Ljvp$a;->d:Ljvp;

    return-object v0
.end method
