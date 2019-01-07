.class Linfo/monitorenter/cpdetector/io/JarArchive$JarElement;
.super Linfo/monitorenter/cpdetector/io/JarArchive;
.source "JarArchive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/monitorenter/cpdetector/io/JarArchive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JarElement"
.end annotation


# instance fields
.field private m_entry:Ljava/util/jar/JarEntry;

.field private m_parent:Ljava/io/File;

.field final synthetic this$0:Linfo/monitorenter/cpdetector/io/JarArchive;


# direct methods
.method constructor <init>(Linfo/monitorenter/cpdetector/io/JarArchive;Ljava/util/jar/JarEntry;Ljava/io/File;)V
    .locals 2
    .param p2, "entry"    # Ljava/util/jar/JarEntry;
    .param p3, "parent"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 600
    iput-object p1, p0, Linfo/monitorenter/cpdetector/io/JarArchive$JarElement;->this$0:Linfo/monitorenter/cpdetector/io/JarArchive;

    .line 602
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Linfo/monitorenter/cpdetector/io/JarArchive;->jar:Ljava/util/jar/JarFile;

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Linfo/monitorenter/cpdetector/io/JarArchive;-><init>(Ljava/io/File;Linfo/monitorenter/cpdetector/io/JarArchive$1;)V

    .line 603
    iput-object p3, p0, Linfo/monitorenter/cpdetector/io/JarArchive$JarElement;->m_parent:Ljava/io/File;

    .line 604
    if-nez p2, :cond_0

    .line 605
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "Entry is null."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 607
    :cond_0
    iput-object p2, p0, Linfo/monitorenter/cpdetector/io/JarArchive$JarElement;->m_entry:Ljava/util/jar/JarEntry;

    .line 608
    iget-object v0, p1, Linfo/monitorenter/cpdetector/io/JarArchive;->jar:Ljava/util/jar/JarFile;

    iput-object v0, p0, Linfo/monitorenter/cpdetector/io/JarArchive$JarElement;->jar:Ljava/util/jar/JarFile;

    .line 609
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 584
    check-cast p1, Ljava/io/File;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-super {p0, p1}, Linfo/monitorenter/cpdetector/io/JarArchive;->compareTo(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public getAbsoluteFile()Ljava/io/File;
    .locals 0

    .prologue
    .line 626
    return-object p0
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 636
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/JarArchive$JarElement;->this$0:Linfo/monitorenter/cpdetector/io/JarArchive;

    iget-object v2, v2, Linfo/monitorenter/cpdetector/io/JarArchive;->jar:Ljava/util/jar/JarFile;

    invoke-virtual {v2}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v1

    .line 637
    .local v1, "prefix":Ljava/lang/String;
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/JarArchive$JarElement;->m_entry:Ljava/util/jar/JarEntry;

    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 638
    .local v0, "postfix":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/JarArchive$JarElement;->m_entry:Ljava/util/jar/JarEntry;

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/JarArchive$JarElement;->m_parent:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/JarArchive$JarElement;->m_parent:Ljava/io/File;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/JarArchive$JarElement;->m_entry:Ljava/util/jar/JarEntry;

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDirectory()Z
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/JarArchive$JarElement;->childs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFile()Z
    .locals 1

    .prologue
    .line 690
    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/JarArchive$JarElement;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastModified()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 700
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/JarArchive$JarElement;->m_entry:Ljava/util/jar/JarEntry;

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 710
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/JarArchive$JarElement;->m_entry:Ljava/util/jar/JarEntry;

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/JarArchive$JarElement;->m_entry:Ljava/util/jar/JarEntry;

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
