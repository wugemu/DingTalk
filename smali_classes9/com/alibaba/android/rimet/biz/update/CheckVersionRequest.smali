.class public Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;
.super Ljava/lang/Object;
.source "CheckVersionRequest.java"

# interfaces
.implements Lelf$a;
.implements Ljaz;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljba;

.field private d:I

.field private e:Landroid/os/Handler;

.field private f:Lelf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;->b:Landroid/content/Context;

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;->e:Landroid/os/Handler;

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;->b:Landroid/content/Context;

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;)Ljba;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;->c:Ljba;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;

    .prologue
    .line 19
    iget v0, p0, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;->d:I

    return v0
.end method


# virtual methods
.method public final a()Ljay;
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v11, 0x0

    .line 40
    invoke-static {}, Lele;->b()Ljay;

    move-result-object v5

    .line 41
    .local v5, "localInfo":Ljay;
    iget v8, p0, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;->d:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    if-eqz v5, :cond_5

    iget-object v8, v5, Ljay;->f:Ljava/lang/String;

    invoke-static {v8}, Lele;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, v5, Ljay;->f:Ljava/lang/String;

    .line 42
    invoke-static {v8}, Lele;->b(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 44
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;->b:Landroid/content/Context;

    invoke-static {v8}, Lele;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "currentVersion":Ljava/lang/String;
    iget-object v8, v5, Ljay;->f:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 47
    iget-object v8, v5, Ljay;->f:Ljava/lang/String;

    const-string/jumbo v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 48
    .local v6, "localVersionArray":[Ljava/lang/String;
    const-string/jumbo v8, "."

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "currentVersionArray":[Ljava/lang/String;
    array-length v8, v6

    array-length v9, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 51
    .local v7, "minLength":I
    const/4 v0, 0x0

    .line 52
    .local v0, "compareFinalResult":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v7, :cond_0

    .line 53
    aget-object v8, v6, v4

    aget-object v9, v3, v4

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 54
    .local v1, "compareResult":I
    if-lez v1, :cond_2

    .line 55
    const/4 v0, 0x1

    .line 66
    .end local v1    # "compareResult":I
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 67
    array-length v8, v6

    array-length v9, v3

    if-le v8, v9, :cond_4

    .line 68
    const/4 v0, 0x1

    .line 74
    :cond_1
    :goto_2
    if-lez v0, :cond_5

    .line 75
    invoke-static {}, Lele;->c()V

    .line 76
    invoke-virtual {p0, v5}, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;->a(Ljay;)V

    .line 84
    .end local v0    # "compareFinalResult":I
    .end local v2    # "currentVersion":Ljava/lang/String;
    .end local v3    # "currentVersionArray":[Ljava/lang/String;
    .end local v4    # "i":I
    .end local v6    # "localVersionArray":[Ljava/lang/String;
    .end local v7    # "minLength":I
    :goto_3
    return-object v11

    .line 57
    .restart local v0    # "compareFinalResult":I
    .restart local v1    # "compareResult":I
    .restart local v2    # "currentVersion":Ljava/lang/String;
    .restart local v3    # "currentVersionArray":[Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v6    # "localVersionArray":[Ljava/lang/String;
    .restart local v7    # "minLength":I
    :cond_2
    if-eqz v1, :cond_3

    .line 60
    const/4 v0, -0x1

    .line 61
    goto :goto_1

    .line 52
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 69
    .end local v1    # "compareResult":I
    :cond_4
    array-length v8, v6

    array-length v9, v3

    if-ge v8, v9, :cond_1

    .line 70
    const/4 v0, -0x1

    goto :goto_2

    .line 82
    .end local v0    # "compareFinalResult":I
    .end local v2    # "currentVersion":Ljava/lang/String;
    .end local v3    # "currentVersionArray":[Ljava/lang/String;
    .end local v4    # "i":I
    .end local v6    # "localVersionArray":[Ljava/lang/String;
    .end local v7    # "minLength":I
    :cond_5
    new-instance v8, Lelb;

    iget-object v9, p0, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;->b:Landroid/content/Context;

    iget v10, p0, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;->d:I

    invoke-direct {v8, v9, v10}, Lelb;-><init>(Landroid/content/Context;I)V

    iput-object v8, p0, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;->f:Lelf;

    .line 83
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;->f:Lelf;

    invoke-interface {v8, p0}, Lelf;->a(Lelf$a;)V

    goto :goto_3
.end method

.method public final a(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;->d:I

    .line 100
    return-void
.end method

.method public final a(Ljay;)V
    .locals 2
    .param p1, "info"    # Ljay;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;->e:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest$2;-><init>(Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;Ljay;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 132
    return-void
.end method

.method public final a(Ljba;)V
    .locals 0
    .param p1, "l"    # Ljba;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;->c:Ljba;

    .line 95
    return-void
.end method

.method public final b(I)V
    .locals 2
    .param p1, "errorCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;->e:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest$1;-><init>(Lcom/alibaba/android/rimet/biz/update/CheckVersionRequest;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 120
    return-void
.end method
