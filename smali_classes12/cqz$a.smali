.class public final Lcqz$a;
.super Lcrd;
.source "EmotionParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcqz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "resid"    # I
    .param p3, "id"    # I

    .prologue
    .line 844
    invoke-direct {p0}, Lcrd;-><init>()V

    .line 821
    const/4 v0, 0x0

    iput v0, p0, Lcqz$a;->b:I

    .line 823
    const-string/jumbo v0, "ww"

    iput-object v0, p0, Lcqz$a;->c:Ljava/lang/String;

    .line 845
    iput-object p1, p0, Lcqz$a;->a:Ljava/lang/String;

    .line 846
    iput p2, p0, Lcqz$a;->b:I

    .line 847
    iput p3, p0, Lcqz$a;->d:I

    .line 848
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIB)V
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 819
    const/16 v0, 0x4b

    invoke-direct {p0, p1, p2, v0}, Lcqz$a;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "english"    # Ljava/lang/String;
    .param p3, "resid"    # I
    .param p4, "id"    # I

    .prologue
    .line 840
    invoke-direct {p0, p1, p3, p4}, Lcqz$a;-><init>(Ljava/lang/String;II)V

    .line 841
    iput-object p2, p0, Lcqz$a;->e:Ljava/lang/String;

    .line 842
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IIB)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .prologue
    .line 819
    invoke-direct {p0, p1, p2, p3, p4}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public final getTalkBackDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcqz$a;->a:Ljava/lang/String;

    return-object v0
.end method
