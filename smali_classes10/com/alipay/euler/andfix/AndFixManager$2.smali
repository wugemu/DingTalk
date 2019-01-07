.class Lcom/alipay/euler/andfix/AndFixManager$2;
.super Ljava/lang/ClassLoader;
.source "AndFixManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/euler/andfix/AndFixManager;->preLoadAddClasses(Ljava/io/File;Ljava/lang/ClassLoader;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/euler/andfix/AndFixManager;

.field final synthetic val$dexFile:Ldalvik/system/DexFile;


# direct methods
.method constructor <init>(Lcom/alipay/euler/andfix/AndFixManager;Ljava/lang/ClassLoader;Ldalvik/system/DexFile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/euler/andfix/AndFixManager;
    .param p2, "x0"    # Ljava/lang/ClassLoader;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/alipay/euler/andfix/AndFixManager$2;->this$0:Lcom/alipay/euler/andfix/AndFixManager;

    iput-object p3, p0, Lcom/alipay/euler/andfix/AndFixManager$2;->val$dexFile:Ldalvik/system/DexFile;

    invoke-direct {p0, p2}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 381
    iget-object v1, p0, Lcom/alipay/euler/andfix/AndFixManager$2;->val$dexFile:Ldalvik/system/DexFile;

    invoke-virtual {p0}, Lcom/alipay/euler/andfix/AndFixManager$2;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 382
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 383
    new-instance v1, Ljava/lang/ClassNotFoundException;

    invoke-direct {v1, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 385
    :cond_0
    return-object v0
.end method
