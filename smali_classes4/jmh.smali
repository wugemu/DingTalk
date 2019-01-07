.class public final Ljmh;
.super Ljava/lang/Object;
.source "GFontConfigParser.java"


# instance fields
.field public a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljmh;->c:Z

    .line 45
    iput-object v1, p0, Ljmh;->a:Ljava/util/HashMap;

    .line 46
    iput-object v1, p0, Ljmh;->b:Ljava/util/List;

    .line 49
    iget-boolean v0, p0, Ljmh;->c:Z

    if-nez v0, :cond_0

    .line 1107
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 1109
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 1112
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 1113
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/system/etc/fonts.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 1117
    :goto_0
    invoke-direct {p0, v0}, Ljmh;->a(Lorg/w3c/dom/Document;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2089
    :goto_1
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 2091
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 2093
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/system/etc/fallback_fonts.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2094
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-nez v2, :cond_2

    .line 52
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljmh;->c:Z

    .line 54
    :cond_0
    return-void

    .line 1115
    :cond_1
    :try_start_2
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/system/etc/system_fonts.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1118
    :catch_0
    move-exception v0

    .line 1119
    const-string/jumbo v1, "GFontConfigParser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "readConfigFile exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ljmj;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2098
    :cond_2
    :try_start_3
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 2099
    invoke-direct {p0, v0}, Ljmh;->b(Lorg/w3c/dom/Document;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 2100
    :catch_1
    move-exception v0

    .line 2101
    const-string/jumbo v1, "GFontConfigParser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "readFallbackConfigFile "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private a(Lorg/w3c/dom/Document;)V
    .locals 36
    .param p1, "doc"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Ljmh;->a:Ljava/util/HashMap;

    move-object/from16 v34, v0

    if-nez v34, :cond_1

    .line 125
    new-instance v34, Ljava/util/HashMap;

    invoke-direct/range {v34 .. v34}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Ljmh;->a:Ljava/util/HashMap;

    .line 131
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v30

    .line 132
    .local v30, "root":Lorg/w3c/dom/Element;
    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v35, "familyset"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_2

    .line 133
    const-string/jumbo v34, "GFontConfigParser"

    const-string/jumbo v35, "Can\'t find familyset."

    invoke-static/range {v34 .. v35}, Ljmj;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_0
    :goto_1
    return-void

    .line 127
    .end local v30    # "root":Lorg/w3c/dom/Element;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Ljmh;->a:Ljava/util/HashMap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 137
    .restart local v30    # "root":Lorg/w3c/dom/Element;
    :cond_2
    sget v34, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v35, 0x15

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_9

    .line 143
    const-string/jumbo v34, "family"

    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v29

    .line 144
    .local v29, "nodeList":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v29 .. v29}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    .line 145
    .local v19, "length":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 146
    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 149
    .local v7, "familyNode":Lorg/w3c/dom/Node;
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 151
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v34

    const-string/jumbo v35, "name"

    invoke-interface/range {v34 .. v35}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v31

    .line 152
    .local v31, "s":Lorg/w3c/dom/Node;
    if-eqz v31, :cond_0

    .line 158
    check-cast v7, Lorg/w3c/dom/Element;

    .end local v7    # "familyNode":Lorg/w3c/dom/Node;
    const-string/jumbo v34, "font"

    move-object/from16 v0, v34

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 160
    .local v15, "fontNodes":Lorg/w3c/dom/NodeList;
    if-nez v15, :cond_3

    .line 161
    const-string/jumbo v34, "GFontConfigParser"

    const-string/jumbo v35, "nameset or fileset is invalid."

    invoke-static/range {v34 .. v35}, Ljmj;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 166
    :cond_3
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v26

    .line 168
    .local v26, "namesetLength":I
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v23, "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v9, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_5

    .line 174
    move/from16 v0, v17

    invoke-interface {v15, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 175
    .local v10, "fileNode":Lorg/w3c/dom/Node;
    instance-of v0, v10, Lorg/w3c/dom/Element;

    move/from16 v34, v0

    if-eqz v34, :cond_4

    move-object v8, v10

    .line 176
    check-cast v8, Lorg/w3c/dom/Element;

    .line 177
    .local v8, "fileElement":Lorg/w3c/dom/Element;
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v32

    .line 178
    .local v32, "text":Ljava/lang/String;
    move-object/from16 v0, v32

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    .end local v8    # "fileElement":Lorg/w3c/dom/Element;
    .end local v32    # "text":Ljava/lang/String;
    :cond_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 183
    .end local v10    # "fileNode":Lorg/w3c/dom/Node;
    :cond_5
    const-string/jumbo v34, "alias"

    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 184
    .local v3, "aliasList":Lorg/w3c/dom/NodeList;
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 185
    .local v2, "aliasLength":I
    const/16 v18, 0x0

    .local v18, "k":I
    :goto_4
    move/from16 v0, v18

    if-ge v0, v2, :cond_8

    .line 186
    move/from16 v0, v18

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 188
    .local v5, "aliasNode":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v34

    const-string/jumbo v35, "name"

    invoke-interface/range {v34 .. v35}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v21

    .line 189
    .local v21, "nameA":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v34

    const-string/jumbo v35, "to"

    invoke-interface/range {v34 .. v35}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v33

    .line 190
    .local v33, "toA":Lorg/w3c/dom/Node;
    if-eqz v21, :cond_8

    if-eqz v33, :cond_8

    .line 196
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v4, "aliasNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :cond_6
    :goto_5
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_7

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 198
    .local v20, "name":Ljava/lang/String;
    invoke-interface/range {v33 .. v33}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_6

    .line 199
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 203
    .end local v20    # "name":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 185
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 207
    .end local v4    # "aliasNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "aliasNode":Lorg/w3c/dom/Node;
    .end local v21    # "nameA":Lorg/w3c/dom/Node;
    .end local v33    # "toA":Lorg/w3c/dom/Node;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Ljmh;->a:Ljava/util/HashMap;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 213
    .end local v2    # "aliasLength":I
    .end local v3    # "aliasList":Lorg/w3c/dom/NodeList;
    .end local v9    # "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "fontNodes":Lorg/w3c/dom/NodeList;
    .end local v16    # "i":I
    .end local v17    # "j":I
    .end local v18    # "k":I
    .end local v19    # "length":I
    .end local v23    # "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "namesetLength":I
    .end local v29    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v31    # "s":Lorg/w3c/dom/Node;
    :cond_9
    const-string/jumbo v34, "family"

    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v29

    .line 214
    .restart local v29    # "nodeList":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v29 .. v29}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    .line 215
    .restart local v19    # "length":I
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_6
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 216
    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 219
    .restart local v7    # "familyNode":Lorg/w3c/dom/Node;
    const/16 v27, 0x0

    .line 220
    .local v27, "namesetNode":Lorg/w3c/dom/Node;
    const/4 v13, 0x0

    .line 222
    .local v13, "filesetNode":Lorg/w3c/dom/Node;
    instance-of v0, v7, Lorg/w3c/dom/Element;

    move/from16 v34, v0

    if-eqz v34, :cond_c

    move-object v6, v7

    .line 223
    check-cast v6, Lorg/w3c/dom/Element;

    .line 224
    .local v6, "familyElement":Lorg/w3c/dom/Element;
    const-string/jumbo v34, "nameset"

    move-object/from16 v0, v34

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    .line 225
    .local v28, "namesetNodes":Lorg/w3c/dom/NodeList;
    const-string/jumbo v34, "fileset"

    move-object/from16 v0, v34

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 227
    .local v14, "filesetNodes":Lorg/w3c/dom/NodeList;
    if-eqz v28, :cond_a

    if-eqz v14, :cond_a

    .line 229
    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v34

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_a

    .line 230
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v34

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_b

    .line 231
    :cond_a
    const-string/jumbo v34, "GFontConfigParser"

    const-string/jumbo v35, "nameset or fileset node doesn\'t exist."

    invoke-static/range {v34 .. v35}, Ljmj;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 235
    :cond_b
    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v27

    .line 236
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-interface {v14, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 239
    .end local v6    # "familyElement":Lorg/w3c/dom/Element;
    .end local v14    # "filesetNodes":Lorg/w3c/dom/NodeList;
    .end local v28    # "namesetNodes":Lorg/w3c/dom/NodeList;
    :cond_c
    if-eqz v27, :cond_d

    if-nez v13, :cond_e

    .line 240
    :cond_d
    const-string/jumbo v34, "GFontConfigParser"

    const-string/jumbo v35, "nameset or fileset is invalid."

    invoke-static/range {v34 .. v35}, Ljmj;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 245
    :cond_e
    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v25

    .line 246
    .local v25, "nameset":Lorg/w3c/dom/NodeList;
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 248
    .local v11, "fileset":Lorg/w3c/dom/NodeList;
    if-eqz v25, :cond_f

    if-nez v11, :cond_10

    .line 249
    :cond_f
    const-string/jumbo v34, "GFontConfigParser"

    const-string/jumbo v35, "nameset or fileset is empty."

    invoke-static/range {v34 .. v35}, Ljmj;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 254
    :cond_10
    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v26

    .line 255
    .restart local v26    # "namesetLength":I
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    .line 256
    .local v12, "filesetLength":I
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .restart local v23    # "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .restart local v9    # "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v17, 0x0

    .restart local v17    # "j":I
    :goto_7
    move/from16 v0, v17

    if-ge v0, v12, :cond_12

    .line 261
    move/from16 v0, v17

    invoke-interface {v11, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 262
    .restart local v10    # "fileNode":Lorg/w3c/dom/Node;
    instance-of v0, v10, Lorg/w3c/dom/Element;

    move/from16 v34, v0

    if-eqz v34, :cond_11

    move-object v8, v10

    .line 263
    check-cast v8, Lorg/w3c/dom/Element;

    .line 264
    .restart local v8    # "fileElement":Lorg/w3c/dom/Element;
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v35, "file"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_11

    .line 265
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v32

    .line 266
    .restart local v32    # "text":Ljava/lang/String;
    move-object/from16 v0, v32

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    .end local v8    # "fileElement":Lorg/w3c/dom/Element;
    .end local v32    # "text":Ljava/lang/String;
    :cond_11
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 272
    .end local v10    # "fileNode":Lorg/w3c/dom/Node;
    :cond_12
    const/16 v17, 0x0

    :goto_8
    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_14

    .line 273
    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    .line 274
    .local v24, "nameNode":Lorg/w3c/dom/Node;
    move-object/from16 v0, v24

    instance-of v0, v0, Lorg/w3c/dom/Element;

    move/from16 v34, v0

    if-eqz v34, :cond_13

    move-object/from16 v22, v24

    .line 275
    check-cast v22, Lorg/w3c/dom/Element;

    .line 276
    .local v22, "nameElement":Lorg/w3c/dom/Element;
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v35, "name"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_13

    .line 277
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v32

    .line 278
    .restart local v32    # "text":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    .end local v22    # "nameElement":Lorg/w3c/dom/Element;
    .end local v32    # "text":Ljava/lang/String;
    :cond_13
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 284
    .end local v24    # "nameNode":Lorg/w3c/dom/Node;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Ljmh;->a:Ljava/util/HashMap;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_6
.end method

.method private b(Lorg/w3c/dom/Document;)V
    .locals 17
    .param p1, "doc"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 290
    move-object/from16 v0, p0

    iget-object v15, v0, Ljmh;->b:Ljava/util/List;

    if-nez v15, :cond_1

    .line 291
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Ljmh;->b:Ljava/util/List;

    .line 297
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v13

    .line 298
    .local v13, "root":Lorg/w3c/dom/Element;
    invoke-interface {v13}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "familyset"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 299
    const-string/jumbo v15, "GFontConfigParser"

    const-string/jumbo v16, "Can\'t find familyset."

    invoke-static/range {v15 .. v16}, Ljmj;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_0
    :goto_1
    return-void

    .line 293
    .end local v13    # "root":Lorg/w3c/dom/Element;
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Ljmh;->b:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 303
    .restart local v13    # "root":Lorg/w3c/dom/Element;
    :cond_2
    const-string/jumbo v15, "family"

    invoke-interface {v13, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 304
    .local v12, "nodeList":Lorg/w3c/dom/NodeList;
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    .line 305
    .local v11, "length":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v11, :cond_0

    .line 306
    invoke-interface {v12, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 308
    .local v2, "familyNode":Lorg/w3c/dom/Node;
    const/4 v7, 0x0

    .line 310
    .local v7, "filesetNode":Lorg/w3c/dom/Node;
    instance-of v15, v2, Lorg/w3c/dom/Element;

    if-eqz v15, :cond_5

    move-object v1, v2

    .line 311
    check-cast v1, Lorg/w3c/dom/Element;

    .line 312
    .local v1, "familyElement":Lorg/w3c/dom/Element;
    const-string/jumbo v15, "fileset"

    invoke-interface {v1, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 314
    .local v8, "filesetNodes":Lorg/w3c/dom/NodeList;
    if-eqz v8, :cond_3

    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_4

    .line 315
    :cond_3
    const-string/jumbo v15, "GFontConfigParser"

    const-string/jumbo v16, "nameset or fileset node doesn\'t exist."

    invoke-static/range {v15 .. v16}, Ljmj;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 319
    :cond_4
    const/4 v15, 0x0

    invoke-interface {v8, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 322
    .end local v1    # "familyElement":Lorg/w3c/dom/Element;
    .end local v8    # "filesetNodes":Lorg/w3c/dom/NodeList;
    :cond_5
    if-nez v7, :cond_6

    .line 323
    const-string/jumbo v15, "GFontConfigParser"

    const-string/jumbo v16, "nameset or fileset is invalid."

    invoke-static/range {v15 .. v16}, Ljmj;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 327
    :cond_6
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 328
    .local v5, "fileset":Lorg/w3c/dom/NodeList;
    if-nez v5, :cond_7

    .line 329
    const-string/jumbo v15, "GFontConfigParser"

    const-string/jumbo v16, "nameset or fileset is empty."

    invoke-static/range {v15 .. v16}, Ljmj;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 333
    :cond_7
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    .line 334
    .local v6, "filesetLength":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_3
    if-ge v10, v6, :cond_9

    .line 335
    invoke-interface {v5, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 336
    .local v4, "fileNode":Lorg/w3c/dom/Node;
    instance-of v15, v4, Lorg/w3c/dom/Element;

    if-eqz v15, :cond_8

    move-object v3, v4

    .line 337
    check-cast v3, Lorg/w3c/dom/Element;

    .line 338
    .local v3, "fileElement":Lorg/w3c/dom/Element;
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "file"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 339
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v14

    .line 340
    .local v14, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Ljmh;->b:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    .end local v3    # "fileElement":Lorg/w3c/dom/Element;
    .end local v14    # "text":Ljava/lang/String;
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 305
    .end local v4    # "fileNode":Lorg/w3c/dom/Node;
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2
.end method
